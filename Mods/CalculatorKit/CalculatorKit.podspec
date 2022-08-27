

#
# Be sure to run `pod lib lint pop100z.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

s.name             = 'CalculatorKit'
s.version          = '1.0.0'
s.summary          = 'Calculator framework'
s.homepage         = 'https://github.com/DynamicKit/CalculatorKit'
s.author           = { 'mohamadrezakoohkan' => 'mohamad_koohkan@icloud.com' }
s.documentation_url = 'https://dynamickit.github.io/CalculatorKit/'
s.ios.deployment_target = '8.1'
s.watchos.deployment_target = '3.0'
s.osx.deployment_target  = '10.12'
s.tvos.deployment_target = '10.0'
s.source           = { :git => 'https://github.com/DynamicKit/CalculatorKit.git', :tag => s.version  }
s.swift_version    = '5.2'
s.source_files     = 'Source/**/*'
s.description      = 'Calculator framework'
s.license          = { :type => 'MIT', :text => <<-LICENSE
    MIT License

    Copyright (c) 2019 mohamad reza koohkan

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "CalculatorKit"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    urnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    CalculatorKit.

LICENSE
}
end
